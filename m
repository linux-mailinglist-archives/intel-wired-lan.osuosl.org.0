Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C91122EF92C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Jan 2021 21:27:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5AB4D87371;
	Fri,  8 Jan 2021 20:27:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xuEIWGl1Cin5; Fri,  8 Jan 2021 20:27:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 736B18738B;
	Fri,  8 Jan 2021 20:27:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 79BC01BF37C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 20:27:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6C0CC87387
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 20:27:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R2T3NSXQdPmV for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Jan 2021 20:27:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B759F87371
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 20:27:02 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5E5FD2399C;
 Fri,  8 Jan 2021 20:27:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610137622;
 bh=uKMf/YCjz4GqBLQ8uH3F7hRE4xdACHWcOKV7E2KR6rY=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=dKsTN3UP4YZ8SoW6w2vdMEJYgnLRQemcYBHXJcsSXKaGU2t5k1SzZBBNti6cgaKhx
 iPZc5RaymVwhHNU7yNdJJ2LK+VLL279DNY5P4e0SbUzsWKktvPKaZ1fQb1PC3GnGgm
 OXFizs8ZK0k8/UxMBFfs9Ikb35+oa9nIYPWWenh7ekZoowIZ+VcHGxiBJ2OxgksQKH
 I+nX/Lme6FMg8C6QHoaEzEH7mE47mrqitE29wzHNp1YovCeY+EgOgsTOp/OZRjPSOd
 LXNOLCt+TC5jDh+C4uhoZBJ6LF86GyNC2S2Tg4eqxW3NQnKQgG7yPXsm8vxqAf8iF0
 o5Lt2XpBmZIhQ==
Message-ID: <0e06ff3234b78b5bde6bf77d192a42c3f8ab5319.camel@kernel.org>
From: Saeed Mahameed <saeed@kernel.org>
To: Shannon Nelson <snelson@pensando.io>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>
Date: Fri, 08 Jan 2021 12:26:58 -0800
In-Reply-To: <c11bb25a-f73d-3ae9-b1fd-7eb96bc79cc7@pensando.io>
References: <20210106215539.2103688-1-jesse.brandeburg@intel.com>
 <20210106215539.2103688-2-jesse.brandeburg@intel.com>
 <1e4ee1cf-c2b7-8ba3-7cb1-5c5cb3ff1e84@pensando.io>
 <20210108102630.00004202@intel.com>
 <c11bb25a-f73d-3ae9-b1fd-7eb96bc79cc7@pensando.io>
User-Agent: Evolution 3.36.5 (3.36.5-2.fc32) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/2] net: core: count
 drops from GRO
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
Cc: netdev@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jamal Hadi Salim <jhs@mojatatu.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 2021-01-08 at 11:21 -0800, Shannon Nelson wrote:
> On 1/8/21 10:26 AM, Jesse Brandeburg wrote:
> > Shannon Nelson wrote:
> > 
> > > On 1/6/21 1:55 PM, Jesse Brandeburg wrote:
> > > > When drivers call the various receive upcalls to receive an skb
> > > > to the stack, sometimes that stack can drop the packet. The
> > > > good
> > > > news is that the return code is given to all the drivers of
> > > > NET_RX_DROP or GRO_DROP. The bad news is that no drivers except
> > > > the one "ice" driver that I changed, check the stat and
> > > > increment
> > > If the stack is dropping the packet, isn't it up to the stack to
> > > track
> > > that, perhaps with something that shows up in netstat -s?  We
> > > don't
> > > really want to make the driver responsible for any drops that
> > > happen
> > > above its head, do we?
> > I totally agree!
> > 
> > In patch 2/2 I revert the driver-specific changes I had made in an
> > earlier patch, and this patch *was* my effort to make the stack
> > show the
> > drops.
> > 
> > Maybe I wasn't clear. I'm seeing packets disappear during TCP
> > workloads, and this GRO_DROP code was the source of the drops (I
> > see it
> > returning infrequently but regularly)
> > 
> > The driver processes the packet but the stack never sees it, and
> > there
> > were no drop counters anywhere tracking it.
> > 
> 
> My point is that the patch increments a netdev counter, which to my
> mind 
> immediately implicates the driver and hardware, rather than the
> stack.  
> As a driver maintainer, I don't want to be chasing driver packet
> drop 
> reports that are a stack problem.  I'd rather see a new counter in 
> netstat -s that reflects the stack decision and can better imply
> what 
> went wrong.  I don't have a good suggestion for a counter name at
> the 
> moment.
> 
> I guess part of the issue is that this is right on the boundary of 
> driver-stack.  But if we follow Eric's suggestions, maybe the
> problem 
> magically goes away :-) .
> 
> sln
> 

I think there is still some merit in this patchset even with Eric's
removal of GRO_DROP from gro_receive(). As Eric explained, it is still
possible to silently drop for the same reason when drivers
call napi_get_frags or even alloc_skb() apis, many drivers do not
account for such packet drops, and maybe it is the right thing to do to
inline the packet drop accounting into the skb alloc APIs ? the
question is, is it the job of those APIs to update netdev->stats ?





_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
