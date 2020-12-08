Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3130A2D238F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Dec 2020 07:22:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B2CBD2042B;
	Tue,  8 Dec 2020 06:22:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CwTC1u84iYt2; Tue,  8 Dec 2020 06:22:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D74C920444;
	Tue,  8 Dec 2020 06:22:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BE2BA1BF309
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 06:22:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B6BDF878D5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 06:22:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9rhmjZPfyho9 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Dec 2020 06:22:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 272798788C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 06:22:23 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id B9515AD7C;
 Tue,  8 Dec 2020 06:22:21 +0000 (UTC)
Received: by lion.mk-sys.cz (Postfix, from userid 1000)
 id 1131C6078E; Tue,  8 Dec 2020 07:22:20 +0100 (CET)
Date: Tue, 8 Dec 2020 07:22:20 +0100
From: Michal Kubecek <mkubecek@suse.cz>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20201208062220.3xrhdo47lgpyttfi@lion.mk-sys.cz>
References: <20201202045325.3254757-1-vinicius.gomes@intel.com>
 <20201202045325.3254757-2-vinicius.gomes@intel.com>
 <20201205094325.790b187f@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
 <87eek11d23.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87eek11d23.fsf@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/9] ethtool: Add support
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
Cc: Jose.Abreu@synopsys.com, jiri@resnulli.us, netdev@vger.kernel.org,
 po.liu@nxp.com, jhs@mojatatu.com, vladimir.oltean@nxp.com, m-karicheri2@ti.com,
 intel-wired-lan@lists.osuosl.org, xiyou.wangcong@gmail.com,
 Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Dec 07, 2020 at 02:11:48PM -0800, Vinicius Costa Gomes wrote:
> Jakub Kicinski <kuba@kernel.org> writes:
> >> + * @min_frag_size_mult: Minimum size for all non-final fragment size,
> >> + * expressed in terms of X in '(1 + X)*64 + 4'
> >
> > Is this way of expressing the min frag size from the standard?
> >
> 
> The standard has this: "A 2-bit integer value indicating, in units of 64
> octets, the minimum number of octets over 64 octets required in
> non-final fragments by the receiver" from IEEE 802.3br-2016, Table
> 79-7a.

Can we be sure that newer version of the standard cannot change this,
e.g. come with a finer granularity? Perhaps it would be safer to express
the size in bytes in the userspace API and translate to this internal
representation in common ethtool code.

Also, please don't forget to update Documentation/networking/ethtool-netlink.rst

Michal
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
